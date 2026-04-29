(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.673941086255780863467634844710119068622589111328125p-699 {+ 3035160824931202 -699 (6.36463e-211)}
; 1.673941086255780863467634844710119068622589111328125p-699 S == 1.8297218839243196697452731314115226268768310546875p-350
; [HW: 1.8297218839243196697452731314115226268768310546875p-350] 

; mpf : + 3736735167262712 -350
; mpfd: + 3736735167262712 -350 (7.97786e-106) class: Pos. norm. non-zero
; hwf : + 3736735167262712 -350 (7.97786e-106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000100 #b1010110010000111011001110010110011100110001110000010)))
(assert (= r (fp #b0 #b01010100001 #b1101010001101000101001110100010000111010111111111000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
