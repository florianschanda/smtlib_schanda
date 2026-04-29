(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AD803EB)))
;; x should be Float32(0x4AD803EB [Rational(14156779, 2), 7078389.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 7078389

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011011000000000111110101))
;; z should be 7078389

(assert (= y z))
(check-sat)
(exit)
