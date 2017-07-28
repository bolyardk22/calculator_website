def calculator (operator,n1,n2)
	if operator == "addition"
		answer = n1 + n2

	elsif operator == "subtraction"
		answer = n1 - n2

	elsif operator == "multiplication"
		answer = n1 * n2

	else
		answer = n1 / n2
	end
	answer.to_s
end