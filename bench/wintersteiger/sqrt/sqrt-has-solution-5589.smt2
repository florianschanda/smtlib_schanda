(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.037447768999904429421121676568873226642608642578125p609 {+ 168649758513826 609 (2.20411e+183)}
; 1.037447768999904429421121676568873226642608642578125p609 S == 1.4404497693428288673800352626130916178226470947265625p304
; [HW: 1.4404497693428288673800352626130916178226470947265625p304] 

; mpf : + 1983609417087785 304
; mpfd: + 1983609417087785 304 (4.6948e+091) class: Pos. norm. non-zero
; hwf : + 1983609417087785 304 (4.6948e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100000 #b0000100110010110001011010100111100101001101010100010)))
(assert (= r (fp #b0 #b10100101111 #b0111000011000001010100001110101011011011101100101001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
