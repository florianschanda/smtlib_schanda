(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b11101100 #b00001111001111010100010)))
;; x should be Float32(0x76079EA2 [Rational(687673370685455082618448070574080), 687673370685455082618448070574080.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 687673409371081310286581661171713.0)))
;; w should be Float32(0x76079EA3 [Rational(687673448056707537954715251769344), 687673448056707537954715251769344.000000])

(assert (distinct x w))
(check-sat)
(exit)
