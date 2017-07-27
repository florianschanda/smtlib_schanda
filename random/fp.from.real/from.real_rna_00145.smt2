(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010110 #b10101000100100101111011)))
;; x should be Float32(0x4B54497B [Rational(13912443), 13912443.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 695622169.0 50.0))))
;; w should be Float32(0x4B54497B [Rational(13912443), 13912443.000000])

(assert (not (= x w)))
(check-sat)
(exit)
