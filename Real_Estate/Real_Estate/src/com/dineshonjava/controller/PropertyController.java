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

import com.dineshonjava.bean.PropertyBean;
import com.dineshonjava.model.Property;
import com.dineshonjava.service.PropertyService;

 
@Controller
public class PropertyController {
	
	@Autowired
	private PropertyService propertyService;
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveProperty(@ModelAttribute("command") PropertyBean propertyBean, 
			BindingResult result) {
		Property property = prepareModel(propertyBean);
		propertyService.addProperty(property);
		return new ModelAndView("redirect:/add.html");
	}

	@RequestMapping(value="/properties", method = RequestMethod.GET)
	public ModelAndView listProperties() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("properties",  prepareListofBean(propertyService.listPropertiess()));
		return new ModelAndView("propertiesList", model);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addProperty(@ModelAttribute("command")  PropertyBean propertyBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("properties",  prepareListofBean(propertyService.listPropertiess()));
		return new ModelAndView("addProperty", model);
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView editProperty(@ModelAttribute("command")  PropertyBean propertyBean,
			BindingResult result) {
		propertyService.deleteProperty(prepareModel(propertyBean));
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("property", null);
		model.put("properties",  prepareListofBean(propertyService.listPropertiess()));
		return new ModelAndView("addProperty", model);
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView deleteProperty(@ModelAttribute("command")  PropertyBean propertyBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("property", preparePropertyBean(propertyService.getProperty(propertyBean.getId())));
		model.put("properties",  prepareListofBean(propertyService.listPropertiess()));
		return new ModelAndView("addProperty", model);
	}
	
	private Property prepareModel(PropertyBean propertyBean){
		Property property = new Property();
		property.setId(propertyBean.getId());
		property.setType(propertyBean.getType());
		property.setBhk(propertyBean.getBhk());
		property.setCity(propertyBean.getCity());
		property.setPrice(propertyBean.getPrice());
		propertyBean.setId(null);
		return property;
	}
	
	private List<PropertyBean> prepareListofBean(List<Property> properties){
		List<PropertyBean> beans = null;
		if(properties != null && !properties.isEmpty()){
			beans = new ArrayList<PropertyBean>();
			PropertyBean bean = null;
			for(Property property : properties){
				bean = new PropertyBean();
				bean.setId(property.getId());
				bean.setType(property.getType());
				bean.setBhk(property.getBhk());
				bean.setCity(property.getCity());
				bean.setState(property.getState());
				bean.setPrice(property.getPrice());
				bean.setStatus(property.getStatus());
				beans.add(bean);
			}
		}
		return beans;
	}
	
	private PropertyBean preparePropertyBean(Property property){
		PropertyBean bean = new PropertyBean();
		bean = new PropertyBean();
		bean.setId(property.getId());
		bean.setType(property.getType());
		bean.setBhk(property.getBhk());
		bean.setCity(property.getCity());
		bean.setState(property.getState());
		bean.setPrice(property.getPrice());
		bean.setStatus(property.getStatus());
	
		
		return bean;
	}
}






