(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4B260F1E)))
;; x should be Float32(0x4B260F1E [Rational(10882846), 10882846.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 10882846

(declare-const z (_ BitVec 32))
(assert (= z #b00000000101001100000111100011110))
;; z should be 10882846

(assert (= y z))
(check-sat)
(exit)
