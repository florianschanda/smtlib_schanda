(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6638024692628941014760357575141824781894683837890625p289 {+ 2989500553219985 289 (1.6549e+087)}
; 1.6638024692628941014760357575141824781894683837890625p289 S == 1.8241723982468840414838950891862623393535614013671875p144
; [HW: 1.8241723982468840414838950891862623393535614013671875p144] 

; mpf : + 3711742505633715 144
; mpfd: + 3711742505633715 144 (4.06804e+043) class: Pos. norm. non-zero
; hwf : + 3711742505633715 144 (4.06804e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100000 #b1010100111101110111101010110100001111100111110010001)))
(assert (= r (fp #b0 #b10010001111 #b1101001011111100111101100101100010111100011110110011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
