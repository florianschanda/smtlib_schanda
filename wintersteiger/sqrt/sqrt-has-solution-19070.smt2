(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3846624253359485212655499708489514887332916259765625p692 {+ 1732365555406409 692 (2.84512e+208)}
; 1.3846624253359485212655499708489514887332916259765625p692 S == 1.176716799122009771139119038707576692104339599609375p346
; [HW: 1.176716799122009771139119038707576692104339599609375p346] 

; mpf : + 795861710675990 346
; mpfd: + 795861710675990 346 (1.68675e+104) class: Pos. norm. non-zero
; hwf : + 795861710675990 346 (1.68675e+104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110011 #b0110001001111001001111001001100011010001011001001001)))
(assert (= r (fp #b0 #b10101011001 #b0010110100111101010011111110100011100010000000010110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
