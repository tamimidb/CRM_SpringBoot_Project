<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class="supernova">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed"
	href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F212553263312446"
	title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed"
	href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F212553263312446"
	title="oEmbed Form">
<meta property="og:title" content="Feedback Form">
<meta property="og:url"
	content="https://form.jotform.com/212553263312446">
<meta property="og:description"
	content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">
<link rel="canonical" href="https://form.jotform.com/212553263312446" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>Feedback Form</title>
<style type="text/css">
@media print {
	.form-section {
		display: inline !important
	}
	.form-pagebreak {
		display: none !important
	}
	.form-section-closed {
		height: auto !important
	}
	.page-section {
		position: initial !important
	}
}
</style>
<link type="text/css" rel="stylesheet"
	href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f30e2a790832f3e96009402" />
<link type="text/css" rel="stylesheet"
	href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.27609" />
<link type="text/css" rel="stylesheet"
	href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.27609" />
<script src="https://cdn01.jotfor.ms/static/prototype.forms.js"
	type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.27609"
	type="text/javascript"></script>
<script defer
	src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script type="text/javascript">
	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;
	JotForm.clearFieldOnHide = "disable";

	JotForm.init(function() {
		/*INIT-START*/

		$('input_11').rating({
			stars : '5',
			inputClassName : 'form-textbox',
			imagePath : 'https://cdn.jotfor.ms/images/stars_v2.png',
			cleanFirst : true,
			value : ''
		});
		$('input_11').setAttribute('role', 'radiogroup');
		$('input_11').setAttribute('aria-labelledby', 'label_11');

		Array.from($('input_11').children).map(function(e, i) {
			e.setAttribute('tabindex', 0);
			if (i < 5) {
				e.setAttribute('aria-label', (i + 1) + ' out of 5');
			}
			e.setAttribute('role', 'radio');
			e.setAttribute('aria-describedby', 'label_11');
			e.classList.add('form-star-rating-star', 'Stars');
			e.onkeypress = function(k) {
				if (k.keyCode == 13 || k.keyCode == 32)
					e.click()
			}
		});
		if (window.JotForm && JotForm.accessible)
			$('input_4').setAttribute('tabindex', 0);
		setTimeout(function() {
			$('input_6').hint('ex: myname@example.com');
		}, 20);
		JotForm.alterTexts({
			"couponApply" : "Apply",
			"couponBlank" : "Please enter a coupon.",
			"couponChange" : "",
			"couponEnter" : "Enter coupon",
			"couponExpired" : "Coupon is expired. Please try another one.",
			"couponInvalid" : "Coupon is invalid.",
			"couponValid" : "Coupon is valid.",
			"shippingShipping" : "Shipping",
			"taxTax" : "Tax",
			"totalSubtotal" : "Subtotal",
			"totalTotal" : "Total"
		}, true);
		/*INIT-END*/
	});

	JotForm.prepareCalculationsOnTheFly([ null, {
		"name" : "clickTo",
		"qid" : "1",
		"text" : "Feedback Form",
		"type" : "control_head"
	}, {
		"name" : "submitForm",
		"qid" : "2",
		"text" : "Submit Feedback",
		"type" : "control_button"
	}, {
		"name" : "feedbackType",
		"qid" : "3",
		"text" : "Feedback Type",
		"type" : "control_radio"
	}, {
		"name" : "describeYour",
		"qid" : "4",
		"text" : "Describe Your Feedback:",
		"type" : "control_textarea"
	}, null, {
		"name" : "email6",
		"qid" : "6",
		"subLabel" : "example@example.com",
		"text" : "E-mail",
		"type" : "control_email"
	}, null, {
		"name" : "name",
		"qid" : "8",
		"text" : "Name",
		"type" : "control_fullname"
	}, null, {
		"description" : "",
		"name" : "selectOption",
		"qid" : "10",
		"subLabel" : "",
		"text" : "Select Option",
		"type" : "control_dropdown"
	}, {
		"description" : "",
		"name" : "ratingAbout",
		"qid" : "11",
		"subLabel" : "",
		"text" : "Rating about Selected Option",
		"type" : "control_rating"
	} ]);
	setTimeout(function() {
		JotForm.paymentExtrasOnTheFly([ null, {
			"name" : "clickTo",
			"qid" : "1",
			"text" : "Feedback Form",
			"type" : "control_head"
		}, {
			"name" : "submitForm",
			"qid" : "2",
			"text" : "Submit Feedback",
			"type" : "control_button"
		}, {
			"name" : "feedbackType",
			"qid" : "3",
			"text" : "Feedback Type",
			"type" : "control_radio"
		}, {
			"name" : "describeYour",
			"qid" : "4",
			"text" : "Describe Your Feedback:",
			"type" : "control_textarea"
		}, null, {
			"name" : "email6",
			"qid" : "6",
			"subLabel" : "example@example.com",
			"text" : "E-mail",
			"type" : "control_email"
		}, null, {
			"name" : "name",
			"qid" : "8",
			"text" : "Name",
			"type" : "control_fullname"
		}, null, {
			"description" : "",
			"name" : "selectOption",
			"qid" : "10",
			"subLabel" : "",
			"text" : "Select Option",
			"type" : "control_dropdown"
		}, {
			"description" : "",
			"name" : "ratingAbout",
			"qid" : "11",
			"subLabel" : "",
			"text" : "Rating about Selected Option",
			"type" : "control_rating"
		} ]);
	}, 20);
</script>
</head>
<body>
	<form class="jotform-form" action="/marketing/save" method="post"
		name="form_212553263312446" id="212553263312446"
		accept-charset="utf-8" autocomplete="on">
		<input type="hidden" name="formID" value="212553263312446" /> <input
			type="hidden" id="JWTContainer" value="" /> <input type="hidden"
			id="cardinalOrderNumber" value="" />
		<div role="main" class="form-all">
			<style>
.form-all:before {
	background: none;
}
</style>
			<ul class="form-section page-section">
				<li id="cid_1" class="form-input-wide" data-type="control_head">
					<div class="form-header-group  header-large">
						<div class="header-text httal htvam">
							<h1 id="header_1" class="form-header" data-component="header">
								Feedback Form</h1>
							<div id="subHeader_1" class="form-subHeader">We would love
								to hear your thoughts, suggestions, concerns or problems with
								anything so we can improve!</div>
						</div>
					</div>
				</li>
				<li class="form-line" data-type="control_radio" id="id_3"><label
					class="form-label form-label-top form-label-auto" id="label_3"
					for="input_3"> Feedback Type </label>
					<div id="cid_3" class="form-input-wide" data-layout="full">
						<div class="form-multiple-column" data-columncount="3"
							role="group" aria-labelledby="label_3" data-component="radio">
							<span class="form-radio-item"> <span class="dragger-item">
							</span> <input type="radio" aria-describedby="label_3"
								class="form-radio" id="input_3_0" name="feedbackType"
								value="Campaign" /> <label id="label_input_3_0" for="input_3_0">
									Campaign </label>
							</span> <span class="form-radio-item"> <span class="dragger-item">
							</span> <input type="radio" aria-describedby="label_3"
								class="form-radio" id="input_3_1" name="feedbackType"
								value="Product" /> <label id="label_input_3_1" for="input_3_1">
									Product </label>
							</span>
						</div>
					</div></li>
					
					<li class="form-line" data-type="control_dropdown" id="product">
					<label class="form-label form-label-top form-label-auto"
					id="label_10" for="input_10"> Select Product Name</label>
					<div id="cid_10" class="form-input-wide" data-layout="half">
						<select class="form-dropdown" id="input_10"
							name="selectedName" style="width: 310px"
							data-component="dropdown">
							<option value="">Please Select</option>
							<c:forEach items="${Product }" var="p">
							<option value="${p.productName }">${p.productName }</option>
							</c:forEach>
						</select>
					</div>
				</li>
				<li class="form-line" data-type="control_dropdown" id="campaign">
					<label class="form-label form-label-top form-label-auto"
					id="label_10" for="input_10"> Select Campaign Name</label>
					<div id="cid_10" class="form-input-wide" data-layout="half">
						<select class="form-dropdown" id="input_10"
							name="selectedName" style="width: 310px"
							data-component="dropdown">
							<option value="">Please Select</option>
							<c:forEach items="${camp}" var="c">
							<option value="${c.campaignName }">${c.campaignName }</option>
							</c:forEach>
						</select>
					</div>
				</li>
				
				
				<li class="form-line" data-type="control_rating" id="id_11"><label
					class="form-label form-label-top form-label-auto" id="label_11"
					for="input_11"> Rating about Selected Option </label>
					<div id="cid_11" class="form-input-wide" data-layout="full">
						<div id="input_11" name="rating" data-component="rating"
							data-version="v2">
							<select name="rating">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
					</div></li>
				<li class="form-line jf-required" data-type="control_textarea"
					id="id_4"><label
					class="form-label form-label-top form-label-auto" id="label_4"
					for="input_4"> Describe Your Feedback: <span
						class="form-required"> * </span>
				</label>
					<div id="cid_4" class="form-input-wide jf-required"
						data-layout="full">
						<textarea id="input_4" class="form-textarea validate[required]"
							name="description" style="width: 648px; height: 163px"
							data-component="textarea" required="" aria-labelledby="label_4"></textarea>
					</div></li>
				<li class="form-line jf-required" data-type="control_email"
					id="id_6"><label
					class="form-label form-label-top form-label-auto" id="label_6"
					for="input_6"> E-mail <span class="form-required"> *
					</span>
				</label>
					<div id="cid_6" class="form-input-wide jf-required"
						data-layout="half">
						<span class="form-sub-label-container" style="vertical-align: top">
							<input type="email" id="input_6" name="leadEmail"
							class="form-textbox validate[required, Email]"
							data-defaultvalue="" style="width: 310px" size="310" value=""
							placeholder="ex: myname@example.com" data-component="email"
							aria-labelledby="label_6 sublabel_input_6" required="" /> <label
							class="form-sub-label" for="input_6" id="sublabel_input_6"
							style="min-height: 13px" aria-hidden="false">
								example@example.com </label>
						</span>
					</div></li>
				<li class="form-line jf-required" data-type="control_fullname"
					id="id_8"><label
					class="form-label form-label-top form-label-auto" id="label_8"
					for="first_8"> Name <span class="form-required"> * </span>
				</label>
					<div id="cid_8" class="form-input-wide jf-required"
						data-layout="full">
						<div data-wrapper-react="true">
							<span class="form-sub-label-container"
								style="vertical-align: top" data-input-type="first"> <input
								type="text" id="first_8" name="leadFirstName"
								class="form-textbox validate[required]" data-defaultvalue=""
								size="10" value="" data-component="first"
								aria-labelledby="label_8 sublabel_8_first" required="" /> <label
								class="form-sub-label" for="first_8" id="sublabel_8_first"
								style="min-height: 13px" aria-hidden="false"> First Name
							</label>
							</span> <span class="form-sub-label-container"
								style="vertical-align: top" data-input-type="last"> <input
								type="text" id="last_8" name="leadLastName"
								class="form-textbox validate[required]" data-defaultvalue=""
								size="15" value="" data-component="last"
								aria-labelledby="label_8 sublabel_8_last" required="" /> <label
								class="form-sub-label" for="last_8" id="sublabel_8_last"
								style="min-height: 13px" aria-hidden="false"> Last Name
							</label>
							</span>
						</div>
					</div></li>
				<li class="form-line" data-type="control_button" id="id_2">
					<div id="cid_2" class="form-input-wide" data-layout="full">
						<div data-align="auto"
							class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
							<button id="input_2" type="submit"
								class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
								data-component="button" data-content="">Submit Feedback
							</button>
						</div>
					</div>
				</li>
				<li style="display: none">Should be Empty: <input type="text"
					name="website" value="" />
				</li>
			</ul>
		</div>
		
		
	
		<script type="text/javascript">
			var all_spc = document
					.querySelectorAll("form[id='212553263312446'] .si" + "mple"
							+ "_spc");
			for (var i = 0; i < all_spc.length; i++) {
				all_spc[i].value = "212553263312446-212553263312446";
			}
		</script>

	</form>
</body>
</html>

<script> 
	$("#product").hide();
</script>
<script type="text/javascript">
	JotForm.ownerView = true;
</script>
<script
	src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.27609"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.27609"></script>

<script language="Javascript">
	function OnButton1() {
		document.Form1.action = "https://submit.jotform.com/submit/212553263312446/"
		// document.Form1.target = "_blank";    // Open in a new window  

		document.Form1.submit(); // Submit the page  

		return true;
	}

	function OnButton2() {
		document.Form1.action = "/marketing/save"
		document.Form1.target = "https://submit.jotform.com/submit/212553263312446/"; // Open in a new window  

		document.Form1.submit(); // Submit the page  

		return true;
	}
</script>
