(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.15546353542955149151794103090651333332061767578125p195 {+ 700145520230228 195 (5.80237e+058)}
; 1.15546353542955149151794103090651333332061767578125p195 | == 1.15546353542955149151794103090651333332061767578125p195
; [HW: 1.15546353542955149151794103090651333332061767578125p195] 

; mpf : + 700145520230228 195
; mpfd: + 700145520230228 195 (5.80237e+058) class: Pos. norm. non-zero
; hwf : + 700145520230228 195 (5.80237e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000010 #b0010011111001100011101010101000001100011111101010100)))
(assert (= r (fp #b0 #b10011000010 #b0010011111001100011101010101000001100011111101010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
