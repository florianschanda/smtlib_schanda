(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.66773600122249643362692950177006423473358154296875p-723 {+ 3007215606287500 -723 (3.77955e-218)}
; 1.66773600122249643362692950177006423473358154296875p-723 S == 1.8263274630922552432821248658001422882080078125p-362
; [HW: 1.8263274630922552432821248658001422882080078125p-362] 

; mpf : + 3721448054868288 -362
; mpfd: + 3721448054868288 -362 (1.94411e-109) class: Pos. norm. non-zero
; hwf : + 3721448054868288 -362 (1.94411e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101100 #b1010101011110000101111110001111110011100110010001100)))
(assert (= r (fp #b0 #b01010010101 #b1101001110001010001100100101010111000100100101000000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
