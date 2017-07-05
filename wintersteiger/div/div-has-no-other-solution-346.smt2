(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0121149575647689911050974842510186135768890380859375p775 {- 54560918374303 775 (-2.0113e+233)}
; Y = -1.305122679008043906634384256904013454914093017578125p164 {- 1374150383482914 164 (-3.0519e+049)}
; -1.0121149575647689911050974842510186135768890380859375p775 / -1.305122679008043906634384256904013454914093017578125p164 == 1.550988230982278448522038161172531545162200927734375p610
; [HW: 1.550988230982278448522038161172531545162200927734375p610] 

; mpf : + 2481430391737318 610
; mpfd: + 2481430391737318 610 (6.59031e+183) class: Pos. norm. non-zero
; hwf : + 2481430391737318 610 (6.59031e+183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000110 #b0000001100011001111101110100001010001000011110011111)))
(assert (= y (fp #b1 #b10010100011 #b0100111000011100100001010001011110011011100000100010)))
(assert (= r (fp #b0 #b11001100001 #b1000110100001101100100001001000010001100101111100110)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
