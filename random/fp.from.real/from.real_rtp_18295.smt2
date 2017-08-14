(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 4716267056050306953883524647818093405.0)))
;; w should be Float32(0x7C63147B [Rational(4716267120573872638393702470658293760), 4716267120573872638393702470658293760.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
