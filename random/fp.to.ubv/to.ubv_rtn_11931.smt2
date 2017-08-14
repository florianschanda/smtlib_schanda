(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11100101111101001101000)))
;; x should be Float32(0x4A72FA68 [Rational(3980954), 3980954.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 3980954

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111001011111010011010))
;; z should be 3980954

(assert (= y z))
(check-sat)
(exit)
