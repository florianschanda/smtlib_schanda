(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7599844319231723321905747070559300482273101806640625p346 {+ 3422665604416577 346 (2.52283e+104)}
; 1.7599844319231723321905747070559300482273101806640625p346 S == 1.32664404868946395055218090419657528400421142578125p173
; [HW: 1.32664404868946395055218090419657528400421142578125p173] 

; mpf : + 1471074015960660 173
; mpfd: + 1471074015960660 173 (1.58834e+052) class: Pos. norm. non-zero
; hwf : + 1471074015960660 173 (1.58834e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011001 #b1100001010001110010101101111100010010100010001000001)))
(assert (= r (fp #b0 #b10010101100 #b0101001110011110111100011100001010001101111001010100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
