(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A2698DA)))
;; x should be Float32(0x4A2698DA [Rational(5459053, 2), 2729526.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 2729526

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001010011010011000110110))
;; z should be 2729526

(assert (= y z))
(check-sat)
(exit)
