(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b01000000011011011011000)))
;; x should be Float32(0x492036D8 [Rational(1312475, 2), 656237.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 6505319903.0 32768.0))))
;; w should be Float32(0x4841DFA7 [Rational(12705703, 64), 198526.609375])

(assert (distinct x w))
(check-sat)
(exit)
