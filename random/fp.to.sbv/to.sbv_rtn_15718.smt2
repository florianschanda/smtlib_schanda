(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010110 #b01001100000111100011111)))
;; x should be Float32(0x4B260F1F [Rational(10882847), 10882847.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 10882847

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000101001100000111100011111))
;; z should be 10882847

(assert (= y z))
(check-sat)
(exit)
