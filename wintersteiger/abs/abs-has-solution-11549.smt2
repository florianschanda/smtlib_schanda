(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.746244213950105983457206093589775264263153076171875p675 {- 3360785163873086 675 (-2.73749e+203)}
; -1.746244213950105983457206093589775264263153076171875p675 | == 1.746244213950105983457206093589775264263153076171875p675
; [HW: 1.746244213950105983457206093589775264263153076171875p675] 

; mpf : + 3360785163873086 675
; mpfd: + 3360785163873086 675 (2.73749e+203) class: Pos. norm. non-zero
; hwf : + 3360785163873086 675 (2.73749e+203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100010 #b1011111100001001110111000101110110111110101100111110)))
(assert (= r (fp #b0 #b11010100010 #b1011111100001001110111000101110110111110101100111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
