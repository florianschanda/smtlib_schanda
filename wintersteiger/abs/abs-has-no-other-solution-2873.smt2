(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.662554070338991163424680053140036761760711669921875p757 {- 2983878264291486 757 (-1.26032e+228)}
; -1.662554070338991163424680053140036761760711669921875p757 | == 1.662554070338991163424680053140036761760711669921875p757
; [HW: 1.662554070338991163424680053140036761760711669921875p757] 

; mpf : + 2983878264291486 757
; mpfd: + 2983878264291486 757 (1.26032e+228) class: Pos. norm. non-zero
; hwf : + 2983878264291486 757 (1.26032e+228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110100 #b1010100110011101001001001011111111110000000010011110)))
(assert (= r (fp #b0 #b11011110100 #b1010100110011101001001001011111111110000000010011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
