(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4804952113951694858684504652046598494052886962890625p-727 {+ 2163958054992593 -727 (2.09701e-219)}
; Y = 1.0441537653073142966064779102453030645847320556640625p-175 {+ 198850880985025 -175 (2.18029e-053)}
; 1.4804952113951694858684504652046598494052886962890625p-727 = 1.0441537653073142966064779102453030645847320556640625p-175 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101000 #b0111101100000001101110111111001011010011101011010001)))
(assert (= y (fp #b0 #b01101010000 #b0000101101001101101010010100000111111101011111000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
