(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2305444374192961998204509654897265136241912841796875p525 {+ 1038279842453883 525 (1.35159e+158)}
; 1.2305444374192961998204509654897265136241912841796875p525 S == 1.5687857963528966109834072994999587535858154296875p262
; [HW: 1.5687857963528966109834072994999587535858154296875p262] 

; mpf : + 2561583500508536 262
; mpfd: + 2561583500508536 262 (1.16258e+079) class: Pos. norm. non-zero
; hwf : + 2561583500508536 262 (1.16258e+079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001100 #b0011101100000100111101011101001011111101100101111011)))
(assert (= r (fp #b0 #b10100000101 #b1001000110011011111100100010100111000011110101111000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
