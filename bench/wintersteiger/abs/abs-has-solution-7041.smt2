(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.96563048851766541957886147429235279560089111328125p-43 {+ 4348813108265748 -43 (2.23466e-013)}
; 1.96563048851766541957886147429235279560089111328125p-43 | == 1.96563048851766541957886147429235279560089111328125p-43
; [HW: 1.96563048851766541957886147429235279560089111328125p-43] 

; mpf : + 4348813108265748 -43
; mpfd: + 4348813108265748 -43 (2.23466e-013) class: Pos. norm. non-zero
; hwf : + 4348813108265748 -43 (2.23466e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010100 #b1111011100110011100011110100100000110100001100010100)))
(assert (= r (fp #b0 #b01111010100 #b1111011100110011100011110100100000110100001100010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
