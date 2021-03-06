(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b10000111110001100111100)))
;; x should be Float32(0x49C3E33C [Rational(3209423, 2), 1604711.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 1604712

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000110000111110001101000))
;; z should be 1604712

(assert (= y z))
(check-sat)
(exit)
