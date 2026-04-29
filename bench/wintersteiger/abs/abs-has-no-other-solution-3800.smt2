(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6956220297937960594936157576739788055419921875p-755 {+ 3132803114170048 -755 (8.9471e-228)}
; 1.6956220297937960594936157576739788055419921875p-755 | == 1.6956220297937960594936157576739788055419921875p-755
; [HW: 1.6956220297937960594936157576739788055419921875p-755] 

; mpf : + 3132803114170048 -755
; mpfd: + 3132803114170048 -755 (8.9471e-228) class: Pos. norm. non-zero
; hwf : + 3132803114170048 -755 (8.9471e-228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001100 #b1011001000010100010010010000110001010111011011000000)))
(assert (= r (fp #b0 #b00100001100 #b1011001000010100010010010000110001010111011011000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
