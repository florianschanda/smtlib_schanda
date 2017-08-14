(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49E39268)))
;; x should be Float32(0x49E39268 [Rational(1864269), 1864269.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 1864269

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000111000111001001001101))
;; z should be 1864269

(assert (= y z))
(check-sat)
(exit)
