package jp.co.rakus.controller;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.rakus.domain.Administrator;
import jp.co.rakus.domain.Employee;
import jp.co.rakus.form.AdministratorForm;
import jp.co.rakus.repository.AdministratorRepository;
import jp.co.rakus.repository.EmployeeRepository;

@Controller
@RequestMapping("/EmployeeManagement")
public class EmployeeManagementController {

	@Autowired
	private AdministratorRepository administratorRepository;

	@Autowired
	private EmployeeRepository employeeRepository;

	@ModelAttribute
	public AdministratorForm setUpCommentForm() {
		return new AdministratorForm();
	}
	


	@RequestMapping("/index")
	public String index() {

		return "login";
	}

	@RequestMapping("/registration")
	public String registration() {
		return "registration";
	}

	@RequestMapping("/executeLogin")
	public String executeLogin(@Validated AdministratorForm administratorForm, BindingResult result , Model model) {

	
		
		String mailAddress = administratorForm.getMailAddress();
		String passWord = administratorForm.getPassword();

		Administrator administrotor = administratorRepository.findByMailAddressAndPassword(mailAddress, passWord);

		if (administrotor == null) {
			result.addError(new ObjectError("loginError", "メールアドレスまたはパスワードが不正です。"));
			return index();
		} else {
			return showEmployeeList(model);
		}
	}

	@RequestMapping("/executeregisteration")
	public String executeregisteration(AdministratorForm administratorForm) {

		Administrator administrator = new Administrator();
		BeanUtils.copyProperties(administratorForm, administrator);
		administratorRepository.insertAdministrator(administrator);

		return "redirect:/EmployeeManagement/index";
	}

	@RequestMapping("/showEmployeeList")
	public String showEmployeeList(Model model) {

		List<Employee> employeeList = employeeRepository.findAll();
		
		model.addAttribute("employeeList", employeeList);
		return "employeeList";
	}
	
	@RequestMapping("/showEmployeeInfo")
	public String showEmployeeInfo(Model model , Integer id) {

		Employee employee = employeeRepository.load(id);
		model.addAttribute("employee", employee);
		return "employeeinfo";
	}
	
	@RequestMapping("/updateDependentsCount")
	public String updateDependentsCount(String id,String dependentsCount, Model model) {
		int intValueOfId = Integer.parseInt(id);
		int intValueOfNum = Integer.parseInt(dependentsCount);
		employeeRepository.updateDependentsCount(intValueOfId, intValueOfNum);
		
		return showEmployeeList(model) ;
		
	}
}
