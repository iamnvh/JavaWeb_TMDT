package shop.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;



@Configuration
public class MVCConf implements WebMvcConfigurer {
	public static String ROOT_UPLOAD_PATH = "F:/shop/upload/";
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/user/");
		registry.addResourceHandler("/admin-resource/**").addResourceLocations("classpath:/admin-resource/");
		registry.addResourceHandler("/summernote-0.8.18/**").addResourceLocations("classpath:/summernote-0.8.18/");

		// cau hinh folder tren server chua cac file nguoi dung upload.
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + ROOT_UPLOAD_PATH);
	}

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}
}
