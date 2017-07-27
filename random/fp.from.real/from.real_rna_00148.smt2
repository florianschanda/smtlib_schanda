(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4B54497B)))
;; x should be Float32(0x4B54497B [Rational(13912443), 13912443.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 135528953.0 16.0))))
;; w should be Float32(0x4B014020 [Rational(8470560), 8470560.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
