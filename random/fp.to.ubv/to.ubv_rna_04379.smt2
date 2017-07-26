(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11010100111011000100111)))
;; x should be Float32(0x4AEA7627 [Rational(15365671, 2), 7682835.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 7682836

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011101010011101100010100))
;; z should be 7682836

(assert (not (= y z)))
(check-sat)
(exit)
