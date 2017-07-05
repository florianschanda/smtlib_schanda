(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.471089464659403489577016443945467472076416015625p725 {+ 2121598337498256 725 (2.59649e+218)}
; 1.471089464659403489577016443945467472076416015625p725 S == 1.715278090957500278790348602342419326305389404296875p362
; [HW: 1.715278090957500278790348602342419326305389404296875p362] 

; mpf : + 3221326143902478 362
; mpfd: + 3221326143902478 362 (1.61136e+109) class: Pos. norm. non-zero
; hwf : + 3221326143902478 362 (1.61136e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011010100 #b0111100010011001010100011011010000110011110010010000)))
(assert (= r (fp #b0 #b10101101001 #b1011011100011100011101110000100000110101001100001110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
