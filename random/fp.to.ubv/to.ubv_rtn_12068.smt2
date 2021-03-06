(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A632E75)))
;; x should be Float32(0x4A632E75 [Rational(14888565, 4), 3722141.250000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 3722141

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001110001100101110011101))
;; z should be 3722141

(assert (= y z))
(check-sat)
(exit)
