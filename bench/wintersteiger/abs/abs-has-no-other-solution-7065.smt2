(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3984297363836410976745128209586255252361297607421875p394 {+ 1794368012310691 394 (5.64234e+118)}
; 1.3984297363836410976745128209586255252361297607421875p394 | == 1.3984297363836410976745128209586255252361297607421875p394
; [HW: 1.3984297363836410976745128209586255252361297607421875p394] 

; mpf : + 1794368012310691 394
; mpfd: + 1794368012310691 394 (5.64234e+118) class: Pos. norm. non-zero
; hwf : + 1794368012310691 394 (5.64234e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001001 #b0110010111111111011111011011111110000101100010100011)))
(assert (= r (fp #b0 #b10110001001 #b0110010111111111011111011011111110000101100010100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
