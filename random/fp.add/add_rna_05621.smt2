(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00000000000000000000000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x1627F7AD)))
;; y should be Float32(0x1627F7AD [Rational(11007917, 81129638414606681695789005144064), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
