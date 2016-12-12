<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table>
	<thead>
		<tr>
			<th data-field="id">Name</th>
			<th data-field="name">Item Name</th>
			<th data-field="price">Item Price</th>
		</tr>
	</thead>

	<tbody>
		<tr>
			<td>Alvin</td>
			<td>Eclair</td>
			<td>$0.87</td>
		</tr>
		<tr>
			<td>Alan</td>
			<td>Jellybean</td>
			<td>$3.76</td>
		</tr>
		<tr>
			<td>Jonathan</td>
			<td>Lollipop</td>
			<td>$7.00</td>
		</tr>
	</tbody>
</table>

<div class="input-field">
          <input placeholder="Placeholder" id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
</div>
<button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
</button>
<a class="waves-effect waves-light btn">button</a>
<a class="waves-effect waves-light btn">button</a>