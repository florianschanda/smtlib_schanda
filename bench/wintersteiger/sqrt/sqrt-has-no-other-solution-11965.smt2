(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.58344433171424014972217264585196971893310546875p-173 {+ 2627599674899680 -173 (1.32255e-052)}
; 1.58344433171424014972217264585196971893310546875p-173 S == 1.7795754166172559340708403397002257406711578369140625p-87
; [HW: 1.7795754166172559340708403397002257406711578369140625p-87] 

; mpf : + 3510895555784673 -87
; mpfd: + 3510895555784673 -87 (1.15002e-026) class: Pos. norm. non-zero
; hwf : + 3510895555784673 -87 (1.15002e-026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010010 #b1001010101011100100110111001001110111111110011100000)))
(assert (= r (fp #b0 #b01110101000 #b1100011110010010010000010010011100100010111111100001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
