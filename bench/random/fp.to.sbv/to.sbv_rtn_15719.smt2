(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4B260F20)))
;; x should be Float32(0x4B260F20 [Rational(10882848), 10882848.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 10882848

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000101001100000111100100000))
;; z should be 10882848

(assert (= y z))
(check-sat)
(exit)
