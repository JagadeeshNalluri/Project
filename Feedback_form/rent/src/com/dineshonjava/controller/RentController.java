package com.dineshonjava.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dineshonjava.bean.RentBean;
import com.dineshonjava.model.Rent;
import com.dineshonjava.service.RentService;


 
@Controller
public class RentController {
	
	@Autowired
	private RentService rentService;
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveRent(@ModelAttribute("command") RentBean rentBean, 
			BindingResult result) {
		Rent rent = prepareModel(rentBean);
		rentService.addRent(rent);
		return new ModelAndView("redirect:/add.html");
	}

	@RequestMapping(value="/rents", method = RequestMethod.GET)
	public ModelAndView listRents() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("rents",  prepareListofBean(rentService.listRentss()));
		return new ModelAndView("rentsList", model);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addRent(@ModelAttribute("command")  RentBean rentBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("rents",  prepareListofBean(rentService.listRentss()));
		return new ModelAndView("addRent", model);
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView editRent(@ModelAttribute("command")  RentBean rentBean,
			BindingResult result) {
		rentService.deleteRent(prepareModel(rentBean));
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("rent", null);
		model.put("rents",  prepareListofBean(rentService.listRentss()));
		return new ModelAndView("addRent", model);
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView deleteRent(@ModelAttribute("command")  RentBean rentBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("rent", prepareRentBean(rentService.getRent(rentBean.getId())));
		model.put("rents",  prepareListofBean(rentService.listRentss()));
		return new ModelAndView("addRent", model);
	}
	
	private Rent prepareModel(RentBean rentBean){
		Rent rent = new Rent();
		rent.setId(rentBean.getId());
		rent.setType(rentBean.getType());
		rent.setBhk(rentBean.getBhk());
		rent.setCity(rentBean.getCity());
		rent.setPrice(rentBean.getPrice());
	//	rentBean.setId(null);
		return rent;
	}
	
	private List<RentBean> prepareListofBean(List<Rent> rents){
		List<RentBean> beans = null;
		if(rents != null && !rents.isEmpty()){
			beans = new ArrayList<RentBean>();
			RentBean bean = null;
			for(Rent rent : rents){
				bean = new RentBean();
				bean.setId(rent.getId());
				bean.setType(rent.getType());
				bean.setBhk(rent.getBhk());
				bean.setCity(rent.getCity());
				bean.setState(rent.getState());
				bean.setPrice(rent.getPrice());
				bean.setStatus(rent.getStatus());
				beans.add(bean);
			}
		}
		return beans;
	}
	
	private RentBean prepareRentBean(Rent rent){
		RentBean bean = new RentBean();
		bean = new RentBean();
		bean.setId(rent.getId());
		bean.setType(rent.getType());
		bean.setBhk(rent.getBhk());
		bean.setCity(rent.getCity());
		bean.setState(rent.getState());
		bean.setPrice(rent.getPrice());
		bean.setStatus(rent.getStatus());
	
		
		return bean;
	}
}






