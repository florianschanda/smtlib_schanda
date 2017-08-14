(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A72FA6A)))
;; x should be Float32(0x4A72FA6A [Rational(7961909, 2), 3980954.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 3980954

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111001011111010011010))
;; z should be 3980954

(assert (= y z))
(check-sat)
(exit)
