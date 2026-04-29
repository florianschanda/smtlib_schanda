(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.253987679328981474924376016133464872837066650390625p870 {+ 1143858817982698 870 (9.87164e+261)}
; 1.253987679328981474924376016133464872837066650390625p870 S == 1.1198159131433083057771682433667592704296112060546875p435
; [HW: 1.1198159131433083057771682433667592704296112060546875p435] 

; mpf : + 539602901785259 435
; mpfd: + 539602901785259 435 (9.93561e+130) class: Pos. norm. non-zero
; hwf : + 539602901785259 435 (9.93561e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100101 #b0100000100000101010101100010100001001110000011101010)))
(assert (= r (fp #b0 #b10110110010 #b0001111010101100010000010111010001111101101010101011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
