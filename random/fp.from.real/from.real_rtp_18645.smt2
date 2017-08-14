(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10100101010000000000100)))
;; x should be Float32(0x8052A004 [Rational(-1353729, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 3018916668280548773986315870502587692342925800877359.0 397858589127829313724305798517456672080364920637878173952371181514527597610026700426444800.0)))))
;; w should be Float32(0x8052A004 [Rational(-1353729, 178405961588244985132285746181186892047843328), -0.000000])

(assert (= x w))
(check-sat)
(exit)
