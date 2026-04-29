(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01101010 #b01010011011000110100010)))
;; x should be Float32(0x3529B1A2 [Rational(5560529, 8796093022208), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 27802646059.0 43980465111040000.0))))
;; w should be Float32(0x3529B1A3 [Rational(11121059, 17592186044416), 0.000001])

(assert (not (distinct x w)))
(check-sat)
(exit)
