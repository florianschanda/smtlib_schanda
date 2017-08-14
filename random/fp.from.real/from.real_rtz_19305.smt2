(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2E97BFDC)))
;; x should be Float32(0x2E97BFDC [Rational(2486263, 36028797018963968), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 1791541468452977612081689.0 25961484292674138142652481646100480.0))))
;; w should be Float32(0x2E97BFDC [Rational(2486263, 36028797018963968), 0.000000])

(assert (= x w))
(check-sat)
(exit)
