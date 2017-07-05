(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5785428260000184952360768875223584473133087158203125p-829 {+ 2605525255591557 -829 (4.40951e-250)}
; 1.5785428260000184952360768875223584473133087158203125p-829 S == 1.7768189699572765061219570270623080432415008544921875p-415
; [HW: 1.7768189699572765061219570270623080432415008544921875p-415] 

; mpf : + 3498481623633923 -415
; mpfd: + 3498481623633923 -415 (2.09988e-125) class: Pos. norm. non-zero
; hwf : + 3498481623633923 -415 (2.09988e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000010 #b1001010000011011011000011111010100000001011010000101)))
(assert (= r (fp #b0 #b01001100000 #b1100011011011101100110111010011011100001000000000011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
