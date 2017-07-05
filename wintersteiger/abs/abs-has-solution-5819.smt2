(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.14188716214017205174968694336712360382080078125p730 {- 639002970543136 730 (-6.44941e+219)}
; -1.14188716214017205174968694336712360382080078125p730 | == 1.14188716214017205174968694336712360382080078125p730
; [HW: 1.14188716214017205174968694336712360382080078125p730] 

; mpf : + 639002970543136 730
; mpfd: + 639002970543136 730 (6.44941e+219) class: Pos. norm. non-zero
; hwf : + 639002970543136 730 (6.44941e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011001 #b0010010001010010101101111001000100011101010000100000)))
(assert (= r (fp #b0 #b11011011001 #b0010010001010010101101111001000100011101010000100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
