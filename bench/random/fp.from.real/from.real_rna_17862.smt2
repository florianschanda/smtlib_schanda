(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0A53D319)))
;; x should be Float32(0x0A53D319 [Rational(13882137, 1361129467683753853853498429727072845824), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 21577844673.0 3402823669209384634633746074317682114560000.0))))
;; w should be Float32(0x0A03B362 [Rational(4315569, 680564733841876926926749214863536422912), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
