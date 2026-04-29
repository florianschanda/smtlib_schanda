(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b01101000110001001110000)))
;; x should be Float32(0x48B46270 [Rational(738855, 2), 369427.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 485089.0 8.0))))
;; w should be Float32(0x476CDC20 [Rational(485089, 8), 60636.125000])

(assert (not (distinct x w)))
(check-sat)
(exit)
