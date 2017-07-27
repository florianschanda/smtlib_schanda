(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b11010000 #b10010110101101001111010)))
;; x should be Float32(0x684B5A7A [Rational(3841237576062577860935680), 3841237576062577860935680.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 3841237864292954012647426.0)))
;; w should be Float32(0x684B5A7B [Rational(3841237864292954012647424), 3841237864292954012647424.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
