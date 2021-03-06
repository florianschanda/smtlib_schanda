(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001101011111111010011)))
;; x should be Float32(0x0026BFD3 [Rational(2539475, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAD44B6F)))
;; y should be Float32(0xCAD44B6F [Rational(-13912943, 2), -6956471.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010011 #b01011001111000110101100)))
;; z should be Float32(0xC9ACF1AC [Rational(-2833515, 2), -1416757.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #xC9ACF1AC))))
(check-sat)
(exit)
