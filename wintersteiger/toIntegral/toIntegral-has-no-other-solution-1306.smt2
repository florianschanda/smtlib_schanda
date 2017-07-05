(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1046383414788347732127249400946311652660369873046875 995 {+ 471249195692747 995 (3.69884e+299)}
; 1.1046383414788347732127249400946311652660369873046875 995 I == 1.1046383414788347732127249400946311652660369873046875 995
; [HW: 1.1046383414788347732127249400946311652660369873046875 995] 

; mpf : + 471249195692747 995
; mpfd: + 471249195692747 995 (3.69884e+299) class: Pos. norm. non-zero
; hwf : + 471249195692747 995 (3.69884e+299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100010 #b0001101011001001100101000000111010001111001011001011)))
(assert (= r (fp #b0 #b11111100010 #b0001101011001001100101000000111010001111001011001011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
