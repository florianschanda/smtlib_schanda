(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x684B5A7A)))
;; x should be Float32(0x684B5A7A [Rational(3841237576062577860935680), 3841237576062577860935680.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 96030944756039802561043847.0 25.0))))
;; w should be Float32(0x684B5A7A [Rational(3841237576062577860935680), 3841237576062577860935680.000000])

(assert (not (= x w)))
(check-sat)
(exit)
