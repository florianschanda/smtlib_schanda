(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3748627568839097978781182973762042820453643798828125p473 {+ 1688231772217453 473 (3.35311e+142)}
; 1.3748627568839097978781182973762042820453643798828125p473 S == 1.6582296323995115994165416850592009723186492919921875p236
; [HW: 1.6582296323995115994165416850592009723186492919921875p236] 

; mpf : + 2964402727198659 236
; mpfd: + 2964402727198659 236 (1.83115e+071) class: Pos. norm. non-zero
; hwf : + 2964402727198659 236 (1.83115e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011000 #b0101111111110111000000010111000101001110000001101101)))
(assert (= r (fp #b0 #b10011101011 #b1010100010000001101111001011100001101001111111000011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
