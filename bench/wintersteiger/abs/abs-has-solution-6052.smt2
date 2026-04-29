(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3284401694929870441086450227885507047176361083984375p-560 {+ 1479163024942119 -560 (3.52001e-169)}
; 1.3284401694929870441086450227885507047176361083984375p-560 | == 1.3284401694929870441086450227885507047176361083984375p-560
; [HW: 1.3284401694929870441086450227885507047176361083984375p-560] 

; mpf : + 1479163024942119 -560
; mpfd: + 1479163024942119 -560 (3.52001e-169) class: Pos. norm. non-zero
; hwf : + 1479163024942119 -560 (3.52001e-169) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001111 #b0101010000010100101001111010101010101010010000100111)))
(assert (= r (fp #b0 #b00111001111 #b0101010000010100101001111010101010101010010000100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
