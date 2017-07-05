(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2359458619078054208983985517988912761211395263671875p620 {+ 1062605695767603 620 (5.3777e+186)}
; 1.2359458619078054208983985517988912761211395263671875p620 S == 1.1117310204846340138118421236868016421794891357421875p310
; [HW: 1.1117310204846340138118421236868016421794891357421875p310] 

; mpf : + 503191782220323 310
; mpfd: + 503191782220323 310 (2.31899e+093) class: Pos. norm. non-zero
; hwf : + 503191782220323 310 (2.31899e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101011 #b0011110001100110111100101011000010000101010000110011)))
(assert (= r (fp #b0 #b10100110101 #b0001110010011010011001110111011011101110001000100011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
