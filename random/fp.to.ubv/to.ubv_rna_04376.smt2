(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEA7627)))
;; x should be Float32(0x4AEA7627 [Rational(15365671, 2), 7682835.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 7682836

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011101010011101100010100))
;; z should be 7682836

(assert (not (= y z)))
(check-sat)
(exit)
