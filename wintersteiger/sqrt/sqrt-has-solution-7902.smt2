(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.414855239755054672201595167280174791812896728515625p-439 {+ 1868341903173562 -439 (9.96653e-133)}
; 1.414855239755054672201595167280174791812896728515625p-439 S == 1.6821743308914534065223733705352060496807098388671875p-220
; [HW: 1.6821743308914534065223733705352060496807098388671875p-220] 

; mpf : + 3072240062404467 -220
; mpfd: + 3072240062404467 -220 (9.98325e-067) class: Pos. norm. non-zero
; hwf : + 3072240062404467 -220 (9.98325e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001000 #b0110101000110011111100111111011101010010011110111010)))
(assert (= r (fp #b0 #b01100100011 #b1010111010100010111110100001100101011001011101110011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
