(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b10000111110001100111000)))
;; x should be Float32(0x49C3E338 [Rational(1604711), 1604711.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 1604711

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000110000111110001100111))
;; z should be 1604711

(assert (= y z))
(check-sat)
(exit)
