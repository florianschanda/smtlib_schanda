(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01111000 #b10110110000100100010110)))
;; x should be Float32(0x3C5B0916 [Rational(7177355, 536870912), 0.013369])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 35886776821.0 2684354560000.0))))
;; w should be Float32(0x3C5B0917 [Rational(14354711, 1073741824), 0.013369])

(assert (not (distinct x w)))
(check-sat)
(exit)
